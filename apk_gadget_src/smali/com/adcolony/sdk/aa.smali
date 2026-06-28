.class Lcom/adcolony/sdk/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lcom/adcolony/sdk/aa;

.field static b:Lcom/adcolony/sdk/aa;

.field static c:Lcom/adcolony/sdk/aa;

.field static d:Lcom/adcolony/sdk/aa;

.field static e:Lcom/adcolony/sdk/aa;

.field static f:Lcom/adcolony/sdk/aa;

.field static g:Lcom/adcolony/sdk/aa;

.field static h:Lcom/adcolony/sdk/aa;


# instance fields
.field i:I

.field j:Z

.field k:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v4, v1}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->a:Lcom/adcolony/sdk/aa;

    .line 5
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v4, v2}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    .line 6
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v3, v1}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->c:Lcom/adcolony/sdk/aa;

    .line 7
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v3, v2}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    .line 8
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v2, v1}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    .line 9
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v2, v2}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    .line 10
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v1, v1}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    .line 11
    new-instance v0, Lcom/adcolony/sdk/aa;

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/aa;-><init>(IZ)V

    sput-object v0, Lcom/adcolony/sdk/aa;->h:Lcom/adcolony/sdk/aa;

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    .line 20
    iput p1, p0, Lcom/adcolony/sdk/aa;->i:I

    .line 21
    iput-boolean p2, p0, Lcom/adcolony/sdk/aa;->j:Z

    .line 22
    return-void
.end method


# virtual methods
.method declared-synchronized a(C)Lcom/adcolony/sdk/aa;
    .locals 3

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 27
    iget v0, p0, Lcom/adcolony/sdk/aa;->i:I

    iget-object v1, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adcolony/sdk/aa;->j:Z

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/ac;->a(ILjava/lang/String;Z)V

    .line 28
    iget-object v0, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_0
    monitor-exit p0

    return-object p0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(D)Lcom/adcolony/sdk/aa;
    .locals 3

    .prologue
    .line 55
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0, v1}, Lcom/adcolony/sdk/az;->a(DILjava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-object p0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(I)Lcom/adcolony/sdk/aa;
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-object p0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    if-nez p1, :cond_0

    .line 47
    :try_start_0
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :goto_0
    monitor-exit p0

    return-object p0

    .line 49
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;
    .locals 3

    .prologue
    .line 34
    monitor-enter p0

    if-nez p1, :cond_1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/aa;->k:Ljava/lang/StringBuilder;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-object p0

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 38
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/aa;->a(C)Lcom/adcolony/sdk/aa;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(D)Lcom/adcolony/sdk/aa;
    .locals 1

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/adcolony/sdk/aa;->a(D)Lcom/adcolony/sdk/aa;

    .line 76
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aa;->a(C)Lcom/adcolony/sdk/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(I)Lcom/adcolony/sdk/aa;
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/aa;->a(I)Lcom/adcolony/sdk/aa;

    .line 81
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aa;->a(C)Lcom/adcolony/sdk/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 71
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/aa;->a(C)Lcom/adcolony/sdk/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
