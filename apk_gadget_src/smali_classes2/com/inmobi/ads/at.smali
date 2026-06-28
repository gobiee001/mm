.class final Lcom/inmobi/ads/at;
.super Ljava/lang/Object;
.source "NativeScrollableDataSourceFactory.java"


# direct methods
.method public static a(ILcom/inmobi/ads/ai;Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/as;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 21
    packed-switch p0, :pswitch_data_0

    .line 34
    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    new-instance v0, Lcom/inmobi/ads/aj;

    invoke-direct {v0, p1, p2}, Lcom/inmobi/ads/aj;-><init>(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ao;)V

    goto :goto_0

    .line 28
    :pswitch_1
    :try_start_0
    new-instance v1, Lcom/inmobi/ads/NativeRecyclerViewAdapter;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/ads/NativeRecyclerViewAdapter;-><init>(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ao;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "Error rendering ad! RecyclerView not found. Please check if the recyclerview support library was included"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
