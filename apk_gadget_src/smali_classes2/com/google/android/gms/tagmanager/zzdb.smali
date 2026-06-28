.class final Lcom/google/android/gms/tagmanager/zzdb;
.super Ljava/lang/Object;


# direct methods
.method private static zzak(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSONArrays are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSON nulls are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzdb;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move-object p0, v1

    :cond_3
    return-object p0
.end method

.method public static zzls(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdje;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzgk;->zzam(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbs;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzdje;->zzbjd()Lcom/google/android/gms/internal/zzdjf;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/google/android/gms/internal/zzbs;->zzym:[Lcom/google/android/gms/internal/zzbs;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdjc;->zzbjb()Lcom/google/android/gms/internal/zzdjd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzbh;->zzqz:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzbs;->zzym:[Lcom/google/android/gms/internal/zzbs;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzdjd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)Lcom/google/android/gms/internal/zzdjd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzbh;->zzqn:Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzbh;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzt;->zzbdr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/tagmanager/zzgk;->zzmc(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbs;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzdjd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)Lcom/google/android/gms/internal/zzdjd;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzt;->zzbds()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzbs;->zzyn:[Lcom/google/android/gms/internal/zzbs;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzdjd;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzbs;)Lcom/google/android/gms/internal/zzdjd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdjd;->zzbjc()Lcom/google/android/gms/internal/zzdjc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzdjf;->zzc(Lcom/google/android/gms/internal/zzdjc;)Lcom/google/android/gms/internal/zzdjf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdjf;->zzbjf()Lcom/google/android/gms/internal/zzdje;

    move-result-object v0

    return-object v0
.end method
