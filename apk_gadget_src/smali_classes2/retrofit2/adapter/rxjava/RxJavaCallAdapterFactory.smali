.class public final Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "RxJavaCallAdapterFactory.java"


# instance fields
.field private final isAsync:Z

.field private final scheduler:Lrx/Scheduler;


# direct methods
.method private constructor <init>(Lrx/Scheduler;Z)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;
    .param p2, "isAsync"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    .line 89
    iput-object p1, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    .line 90
    iput-boolean p2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->isAsync:Z

    .line 91
    return-void
.end method

.method public static create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;-><init>(Lrx/Scheduler;Z)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .locals 13
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v12

    .line 96
    .local v12, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lrx/Single;

    if-ne v12, v0, :cond_0

    const/4 v6, 0x1

    .line 97
    .local v6, "isSingle":Z
    :goto_0
    const-string v0, "rx.Completable"

    invoke-virtual {v12}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 98
    .local v8, "isCompletable":Z
    const-class v0, Lrx/Observable;

    if-eq v12, v0, :cond_1

    if-nez v6, :cond_1

    if-nez v8, :cond_1

    .line 99
    const/4 v0, 0x0

    .line 135
    .end local v6    # "isSingle":Z
    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    :goto_1
    return-object v0

    .line 96
    .end local v8    # "isCompletable":Z
    .restart local p1    # "returnType":Ljava/lang/reflect/Type;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 102
    .restart local v6    # "isSingle":Z
    .restart local v8    # "isCompletable":Z
    :cond_1
    if-eqz v8, :cond_2

    .line 103
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;

    const-class v1, Ljava/lang/Void;

    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->isAsync:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;ZZZZZ)V

    goto :goto_1

    .line 106
    :cond_2
    const/4 v4, 0x0

    .line 107
    .local v4, "isResult":Z
    const/4 v5, 0x0

    .line 109
    .local v5, "isBody":Z
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_4

    .line 110
    if-eqz v6, :cond_3

    const-string v9, "Single"

    .line 111
    .local v9, "name":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return type must be parameterized as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<Foo> or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<? extends Foo>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    .end local v9    # "name":Ljava/lang/String;
    :cond_3
    const-string v9, "Observable"

    goto :goto_2

    .line 115
    :cond_4
    const/4 v0, 0x0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v0, p1}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v10

    .line 116
    .local v10, "observableType":Ljava/lang/reflect/Type;
    invoke-static {v10}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v11

    .line 117
    .local v11, "rawObservableType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lretrofit2/Response;

    if-ne v11, v0, :cond_6

    .line 118
    instance-of v0, v10, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_5

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_5
    const/4 v0, 0x0

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .end local v10    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0, v10}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 135
    .local v1, "responseType":Ljava/lang/reflect/Type;
    :goto_3
    new-instance v0, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;

    iget-object v2, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->scheduler:Lrx/Scheduler;

    iget-boolean v3, p0, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->isAsync:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lretrofit2/adapter/rxjava/RxJavaCallAdapter;-><init>(Ljava/lang/reflect/Type;Lrx/Scheduler;ZZZZZ)V

    goto :goto_1

    .line 123
    .end local v1    # "responseType":Ljava/lang/reflect/Type;
    .restart local v10    # "observableType":Ljava/lang/reflect/Type;
    :cond_6
    const-class v0, Lretrofit2/adapter/rxjava/Result;

    if-ne v11, v0, :cond_8

    .line 124
    instance-of v0, v10, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_7

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_7
    const/4 v0, 0x0

    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .end local v10    # "observableType":Ljava/lang/reflect/Type;
    invoke-static {v0, v10}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 129
    .restart local v1    # "responseType":Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    goto :goto_3

    .line 131
    .end local v1    # "responseType":Ljava/lang/reflect/Type;
    .restart local v10    # "observableType":Ljava/lang/reflect/Type;
    :cond_8
    move-object v1, v10

    .line 132
    .restart local v1    # "responseType":Ljava/lang/reflect/Type;
    const/4 v5, 0x1

    goto :goto_3
.end method
