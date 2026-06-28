.class Lcom/moat/analytics/mobile/mpub/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/v$b;,
        Lcom/moat/analytics/mobile/mpub/v$c;,
        Lcom/moat/analytics/mobile/mpub/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# instance fields
.field private final b:Lcom/moat/analytics/mobile/mpub/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/v$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/moat/analytics/mobile/mpub/v$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moat/analytics/mobile/mpub/v$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/mpub/v",
            "<TT;>.com/moat/analytics/mobile/mpub/v$com/moat/analytics/mobile/mpub/v$b;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/moat/analytics/mobile/mpub/v",
            "<TT;>.com/moat/analytics/mobile/mpub/v$com/moat/analytics/mobile/mpub/v$b;>;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/moat/analytics/mobile/mpub/v;->a:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moat/analytics/mobile/mpub/v$a",
            "<TT;>;",
            "Lcom/moat/analytics/mobile/mpub/v$c",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/v;->b:Lcom/moat/analytics/mobile/mpub/v$a;

    iput-object p2, p0, Lcom/moat/analytics/mobile/mpub/v;->c:Lcom/moat/analytics/mobile/mpub/v$c;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->e:Ljava/util/LinkedList;

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/mpub/v$1;

    invoke-direct {v1, p0}, Lcom/moat/analytics/mobile/mpub/v$1;-><init>(Lcom/moat/analytics/mobile/mpub/v;)V

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u$b;)V

    return-void
.end method

.method static a(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/mpub/v$a",
            "<TT;>;",
            "Lcom/moat/analytics/mobile/mpub/v$c",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/mpub/v$c;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lcom/moat/analytics/mobile/mpub/v;

    invoke-direct {v2, p0, p1}, Lcom/moat/analytics/mobile/mpub/v;-><init>(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->c:Lcom/moat/analytics/mobile/mpub/v$c;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/mpub/v$c;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getClass"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "toString"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/moat/analytics/mobile/mpub/v;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/v;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/v;->d()V

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/v;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/u;->a()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    sget-object v2, Lcom/moat/analytics/mobile/mpub/u$d;->b:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/v;->c()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/u;->a()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/mpub/u$d;->a:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/v;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/v;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/v;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/v;->c()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/v;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/v;->f:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->b:Lcom/moat/analytics/mobile/mpub/v$a;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/mpub/v$a;->a()Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/mpub/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/v;->f:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OnOffTrackerProxy"

    const-string v2, "Could not create instance"

    invoke-static {v1, p0, v2, v0}, Lcom/moat/analytics/mobile/mpub/n;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/v$b;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/mpub/v$b;-><init>(Lcom/moat/analytics/mobile/mpub/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/mpub/v$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->e:Ljava/util/LinkedList;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/v$b;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/moat/analytics/mobile/mpub/v$b;-><init>(Lcom/moat/analytics/mobile/mpub/v;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/moat/analytics/mobile/mpub/v$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c()V
    .locals 12

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/v;->b()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/v;->d:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/v;->e:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moat/analytics/mobile/mpub/v$b;

    :try_start_0
    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/v$b;->a(Lcom/moat/analytics/mobile/mpub/v$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v2

    array-length v2, v2

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/v$b;->a(Lcom/moat/analytics/mobile/mpub/v$b;)[Ljava/lang/ref/WeakReference;

    move-result-object v9

    array-length v10, v9

    move v2, v3

    move v4, v3

    :goto_2
    if-ge v2, v10, :cond_2

    aget-object v11, v9, v2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/v$b;->b(Lcom/moat/analytics/mobile/mpub/v$b;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/v;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/v;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/moat/analytics/mobile/mpub/v;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/moat/analytics/mobile/mpub/v;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
