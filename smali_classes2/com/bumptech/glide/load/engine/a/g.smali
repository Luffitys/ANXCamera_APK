.class public Lcom/bumptech/glide/load/engine/a/g;
.super Ljava/lang/Object;
.source "DiskLruCacheWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/a/a;


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final Kg:I = 0x1

.field private static Lg:Lcom/bumptech/glide/load/engine/a/g; = null

.field private static final TAG:Ljava/lang/String; = "DiskLruCacheWrapper"


# instance fields
.field private final Hg:Lcom/bumptech/glide/load/engine/a/s;

.field private final Ig:Lcom/bumptech/glide/load/engine/a/c;

.field private Jg:Lcom/bumptech/glide/a/b;

.field private final directory:Ljava/io/File;

.field private final maxSize:J


# direct methods
.method protected constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Ig:Lcom/bumptech/glide/load/engine/a/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/g;->directory:Ljava/io/File;

    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/a/g;->maxSize:J

    new-instance p1, Lcom/bumptech/glide/load/engine/a/s;

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/a/s;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a/g;->Hg:Lcom/bumptech/glide/load/engine/a/s;

    return-void
.end method

.method public static declared-synchronized a(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/a/a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/engine/a/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/engine/a/g;->Lg:Lcom/bumptech/glide/load/engine/a/g;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bumptech/glide/load/engine/a/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/g;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/engine/a/g;->Lg:Lcom/bumptech/glide/load/engine/a/g;

    :cond_0
    sget-object p0, Lcom/bumptech/glide/load/engine/a/g;->Lg:Lcom/bumptech/glide/load/engine/a/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/a/a;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/a/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/engine/a/g;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method private declared-synchronized n()Lcom/bumptech/glide/a/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Jg:Lcom/bumptech/glide/a/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->directory:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/a/g;->maxSize:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/a/b;->a(Ljava/io/File;IIJ)Lcom/bumptech/glide/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Jg:Lcom/bumptech/glide/a/b;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Jg:Lcom/bumptech/glide/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized uk()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Jg:Lcom/bumptech/glide/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/engine/a/a$b;)V
    .locals 4

    const-string v0, "DiskLruCacheWrapper"

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a/g;->Hg:Lcom/bumptech/glide/load/engine/a/s;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/engine/a/s;->f(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a/g;->Ig:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/engine/a/c;->r(Ljava/lang/String;)V

    const/4 v2, 0x2

    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g;->n()Lcom/bumptech/glide/a/b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/a/b;->get(Ljava/lang/String;)Lcom/bumptech/glide/a/b$d;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/g;->Ig:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/a/c;->s(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/a/b;->edit(Ljava/lang/String;)Lcom/bumptech/glide/a/b$b;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p1, v2}, Lcom/bumptech/glide/a/b$b;->o(I)Ljava/io/File;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/bumptech/glide/load/engine/a/a$b;->c(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/bumptech/glide/a/b$b;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/bumptech/glide/a/b$b;->abortUnlessCommitted()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/a/b$b;->abortUnlessCommitted()V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Had two simultaneous puts for: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    :try_start_5
    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Unable to put to disk cache"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/g;->Ig:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/a/c;->s(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/a/g;->Ig:Lcom/bumptech/glide/load/engine/a/c;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/engine/a/c;->s(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/bumptech/glide/load/c;)Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Hg:Lcom/bumptech/glide/load/engine/a/s;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/s;->f(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g;->n()Lcom/bumptech/glide/a/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a/b;->get(Ljava/lang/String;)Lcom/bumptech/glide/a/b$d;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/a/b$d;->o(I)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Unable to get from disk cache"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a/g;->Hg:Lcom/bumptech/glide/load/engine/a/s;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a/s;->f(Lcom/bumptech/glide/load/c;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g;->n()Lcom/bumptech/glide/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a/b;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    const-string v0, "DiskLruCacheWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Unable to delete from disk cache"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g;->n()Lcom/bumptech/glide/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/a/b;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g;->uk()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DiskLruCacheWrapper"

    const-string v2, "Unable to clear disk cache or disk cache cleared externally"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a/g;->uk()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
