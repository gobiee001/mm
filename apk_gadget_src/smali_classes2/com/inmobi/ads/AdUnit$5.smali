.class final Lcom/inmobi/ads/AdUnit$5;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Z)V
    .locals 0

    .prologue
    .line 820
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    iput-boolean p2, p0, Lcom/inmobi/ads/AdUnit$5;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    new-instance v1, Lcom/inmobi/ads/AdUnit$a;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/AdUnit$a;-><init>(Lcom/inmobi/ads/AdUnit;)V

    invoke-static {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/AdUnit$a;)Lcom/inmobi/ads/AdUnit$a;

    .line 827
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    .line 1269
    iget-wide v2, v1, Lcom/inmobi/ads/AdUnit;->b:J

    .line 828
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 856
    :cond_1
    :goto_0
    return-void

    .line 831
    :cond_2
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()V

    .line 832
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->J()V

    .line 833
    new-instance v0, Lcom/inmobi/commons/core/configs/h;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/h;-><init>()V

    .line 834
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 2181
    iget-boolean v0, v0, Lcom/inmobi/commons/core/configs/h;->f:Z

    .line 835
    if-nez v0, :cond_1

    .line 836
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 838
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/bf;

    move-result-object v0

    if-nez v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    new-instance v1, Lcom/inmobi/ads/bf;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/bf;-><init>(Lcom/inmobi/ads/bf$a;)V

    invoke-static {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/bf;)Lcom/inmobi/ads/bf;

    .line 841
    :cond_3
    iget-object v7, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/bf;

    move-result-object v8

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0}, Lcom/inmobi/ads/AdUnit;->d(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/i;

    move-result-object v0

    iget-boolean v9, p0, Lcom/inmobi/ads/AdUnit$5;->a:Z

    .line 3150
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/inmobi/ads/bf;->a:Z

    .line 3151
    iput-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 3152
    iput-boolean v9, v8, Lcom/inmobi/ads/bf;->e:Z

    .line 3153
    iget-object v0, v8, Lcom/inmobi/ads/bf;->c:Lcom/inmobi/ads/c;

    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 4093
    iget-object v0, v0, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 3153
    iget-object v1, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 5077
    iget-object v1, v1, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 5586
    iget-wide v2, v1, Lcom/inmobi/ads/b$b;->d:J

    .line 3153
    invoke-static {v0, v2, v3}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;J)I

    move-result v0

    .line 3156
    if-lez v0, :cond_4

    .line 3157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3158
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3159
    const-string v0, "isPreloaded"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3160
    const-string v0, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3161
    iget-object v0, v8, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v2, "ads"

    const-string v3, "AdCacheAdExpired"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3164
    :cond_4
    iget-object v1, v8, Lcom/inmobi/ads/bf;->c:Lcom/inmobi/ads/c;

    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 6053
    iget-wide v2, v0, Lcom/inmobi/ads/i;->d:J

    .line 3164
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 6117
    iget-object v4, v0, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 3165
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 6132
    iget-object v5, v0, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 3165
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 7069
    iget-object v0, v0, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 3166
    invoke-static {v0}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 3164
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/ads/c;->c(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 3168
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 3169
    if-nez v0, :cond_6

    .line 3170
    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/inmobi/ads/bf;->a:Z

    .line 3171
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 8037
    iget v0, v0, Lcom/inmobi/ads/i;->b:I

    .line 3171
    invoke-virtual {v8, v0}, Lcom/inmobi/ads/bf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3172
    new-instance v0, Lcom/inmobi/ads/a/a;

    const-string v1, "Ignoring request to fetch an ad from the network sooner than the minimum request interval"

    invoke-direct {v0, v1}, Lcom/inmobi/ads/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/inmobi/ads/a/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :catch_0
    move-exception v0

    .line 843
    :try_start_2
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inmobi/ads/a/a;->getMessage()Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/bf;

    move-result-object v0

    .line 11215
    iget-boolean v0, v0, Lcom/inmobi/ads/bf;->a:Z

    .line 844
    if-nez v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$5;->b:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;)J

    move-result-wide v2

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 849
    :catch_1
    move-exception v0

    .line 850
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Unable to Prefetch ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prefetch failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 3177
    :cond_5
    :try_start_3
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v8, v0}, Lcom/inmobi/ads/bf;->a(Lcom/inmobi/ads/i;)Ljava/lang/String;

    move-result-object v0

    .line 841
    :goto_1
    invoke-static {v7, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 3182
    :cond_6
    iget-object v2, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 8077
    iget-object v2, v2, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 8582
    iget v2, v2, Lcom/inmobi/ads/b$b;->c:I

    .line 3182
    if-ge v0, v2, :cond_9

    .line 3183
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/inmobi/ads/bf;->a:Z

    .line 3184
    if-nez v9, :cond_7

    .line 3185
    iget-object v0, v8, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v2, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 9053
    iget-wide v2, v2, Lcom/inmobi/ads/i;->d:J

    .line 3185
    invoke-interface {v0, v2, v3}, Lcom/inmobi/ads/bf$a;->a(J)V

    .line 3187
    :cond_7
    invoke-virtual {v8, v1}, Lcom/inmobi/ads/bf;->a(Ljava/util/List;)V

    .line 3188
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 10037
    iget v0, v0, Lcom/inmobi/ads/i;->b:I

    .line 3188
    invoke-virtual {v8, v0}, Lcom/inmobi/ads/bf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3189
    new-instance v0, Lcom/inmobi/ads/a/a;

    const-string v1, "Ignoring request to fetch an ad from the network sooner than the minimum request interval"

    invoke-direct {v0, v1}, Lcom/inmobi/ads/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3194
    :cond_8
    iget-object v0, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v8, v0}, Lcom/inmobi/ads/bf;->a(Lcom/inmobi/ads/i;)Ljava/lang/String;

    move-result-object v0

    .line 3207
    :goto_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3208
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3209
    const-string v2, "isPreloaded"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3210
    iget-object v2, v8, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    const-string v3, "ads"

    const-string v4, "AdCacheAdRequested"

    invoke-interface {v2, v3, v4, v1}, Lcom/inmobi/ads/bf$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 3199
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/inmobi/ads/bf;->a:Z

    .line 3200
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 10457
    iget-object v0, v0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 3201
    if-nez v9, :cond_a

    .line 3202
    iget-object v2, v8, Lcom/inmobi/ads/bf;->b:Lcom/inmobi/ads/bf$a;

    iget-object v3, v8, Lcom/inmobi/ads/bf;->d:Lcom/inmobi/ads/i;

    .line 11053
    iget-wide v4, v3, Lcom/inmobi/ads/i;->d:J

    .line 3202
    invoke-interface {v2, v4, v5}, Lcom/inmobi/ads/bf$a;->a(J)V

    .line 3204
    :cond_a
    invoke-virtual {v8, v1}, Lcom/inmobi/ads/bf;->a(Ljava/util/List;)V
    :try_end_3
    .catch Lcom/inmobi/ads/a/a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
