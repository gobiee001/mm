.class public final Lcom/inmobi/commons/core/utilities/b/f;
.super Ljava/lang/Object;
.source "PublisherProvidedUserInfoDao.java"


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 39
    sput v0, Lcom/inmobi/commons/core/utilities/b/f;->a:I

    .line 46
    sput v0, Lcom/inmobi/commons/core/utilities/b/f;->h:I

    .line 51
    sput v0, Lcom/inmobi/commons/core/utilities/b/f;->m:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 102
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;I)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/b/f;->a:I

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 366
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1466
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1468
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1470
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1472
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    const-string v1, "user_info_store"

    invoke-static {v1}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v1

    const-string v2, "user_location"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->q:Landroid/location/Location;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 117
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age_group"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->a:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->a(I)V

    .line 65
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->a(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->b(Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->c(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->d(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->e(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->f(Ljava/lang/String;)V

    .line 71
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->h:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->b(I)V

    .line 72
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->g(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->h(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->i(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->j(Ljava/lang/String;)V

    .line 76
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->m:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->c(I)V

    .line 77
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->k(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->l(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->m(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->q:Landroid/location/Location;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/f;->a(Landroid/location/Location;)V

    .line 81
    return-void
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 207
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_yob"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;I)V

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/b/f;->h:I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 132
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_area_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 343
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->q:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 344
    sget-object v1, Lcom/inmobi/commons/core/utilities/b/f;->q:Landroid/location/Location;

    .line 362
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :cond_1
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v2, "user_location"

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    if-eqz v2, :cond_0

    .line 350
    new-instance v0, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 352
    :try_start_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 353
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 354
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 355
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 356
    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    .line 362
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 361
    goto :goto_1

    .line 360
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static c(I)V
    .locals 2

    .prologue
    .line 282
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 283
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_income"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;I)V

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/b/f;->m:I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 147
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_post_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v2, -0x80000000

    .line 376
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2109
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->a:I

    if-eq v0, v2, :cond_10

    .line 2110
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->a:I

    .line 379
    :goto_0
    if-eq v0, v2, :cond_0

    if-lez v0, :cond_0

    .line 380
    const-string v1, "u-age"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    :cond_0
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->h:I

    if-eq v0, v2, :cond_11

    .line 2215
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->h:I

    .line 384
    :goto_1
    if-eq v0, v2, :cond_1

    if-lez v0, :cond_1

    .line 385
    const-string v1, "u-yearofbirth"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    :cond_1
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->m:I

    if-eq v0, v2, :cond_12

    .line 2291
    sget v0, Lcom/inmobi/commons/core/utilities/b/f;->m:I

    .line 389
    :goto_2
    if-eq v0, v2, :cond_2

    if-lez v0, :cond_2

    .line 390
    const-string v1, "u-income"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3169
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 3170
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->e:Ljava/lang/String;

    .line 3176
    :goto_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/b/f;->f:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 3177
    sget-object v1, Lcom/inmobi/commons/core/utilities/b/f;->f:Ljava/lang/String;

    .line 3199
    :goto_4
    sget-object v2, Lcom/inmobi/commons/core/utilities/b/f;->g:Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 3200
    sget-object v2, Lcom/inmobi/commons/core/utilities/b/f;->g:Ljava/lang/String;

    .line 3447
    :goto_5
    const-string v3, ""

    .line 3449
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_20

    .line 3450
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3452
    :goto_6
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 3453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3455
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 3456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 395
    const-string v1, "u-location"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4124
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 4125
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->b:Ljava/lang/String;

    .line 399
    :goto_7
    if-eqz v0, :cond_6

    .line 400
    const-string v1, "u-agegroup"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    :cond_6
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 4140
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->c:Ljava/lang/String;

    .line 404
    :goto_8
    if-eqz v0, :cond_7

    .line 405
    const-string v1, "u-areacode"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    :cond_7
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->d:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 4155
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->d:Ljava/lang/String;

    .line 409
    :goto_9
    if-eqz v0, :cond_8

    .line 410
    const-string v1, "u-postalcode"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4229
    :cond_8
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->i:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 4230
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->i:Ljava/lang/String;

    .line 414
    :goto_a
    if-eqz v0, :cond_9

    .line 415
    const-string v1, "u-gender"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4244
    :cond_9
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->j:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 4245
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->j:Ljava/lang/String;

    .line 419
    :goto_b
    if-eqz v0, :cond_a

    .line 420
    const-string v1, "u-ethnicity"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4260
    :cond_a
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->k:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 4261
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->k:Ljava/lang/String;

    .line 424
    :goto_c
    if-eqz v0, :cond_b

    .line 425
    const-string v1, "u-education"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4267
    :cond_b
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 4268
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->l:Ljava/lang/String;

    .line 428
    :goto_d
    if-eqz v0, :cond_c

    .line 429
    const-string v1, "u-language"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4305
    :cond_c
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->n:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 4306
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->n:Ljava/lang/String;

    .line 432
    :goto_e
    if-eqz v0, :cond_d

    .line 433
    const-string v1, "u-householdincome"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4320
    :cond_d
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 4321
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->o:Ljava/lang/String;

    .line 436
    :goto_f
    if-eqz v0, :cond_e

    .line 437
    const-string v1, "u-interests"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4335
    :cond_e
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->p:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 4336
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/f;->p:Ljava/lang/String;

    .line 440
    :goto_10
    if-eqz v0, :cond_f

    .line 441
    const-string v1, "u-nationality"

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_f
    return-object v4

    .line 2112
    :cond_10
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->d(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2217
    :cond_11
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_yob"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->d(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    .line 2293
    :cond_12
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_income"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->d(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 3172
    :cond_13
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_city_code"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 3179
    :cond_14
    const-string v1, "user_info_store"

    invoke-static {v1}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v1

    const-string v2, "user_state_code"

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 3202
    :cond_15
    const-string v2, "user_info_store"

    invoke-static {v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v2

    const-string v3, "user_country_code"

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 4127
    :cond_16
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age_group"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 4142
    :cond_17
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_area_code"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 4157
    :cond_18
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_post_code"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 4232
    :cond_19
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_gender"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 4247
    :cond_1a
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_ethnicity"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 4263
    :cond_1b
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_education"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 4270
    :cond_1c
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_language"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 4308
    :cond_1d
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_house_income"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 4323
    :cond_1e
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_interest"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 4338
    :cond_1f
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_nationality"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_20
    move-object v0, v3

    goto/16 :goto_6
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 162
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_city_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 184
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_state_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 187
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 191
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 192
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_country_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 222
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_gender"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 237
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_ethnicity"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 252
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 253
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_education"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 275
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_language"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 297
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 298
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_house_income"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 301
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 313
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_interest"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 328
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_nationality"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/b/f;->p:Ljava/lang/String;

    goto :goto_0
.end method
