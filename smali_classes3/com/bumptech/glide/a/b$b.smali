.class public final Lcom/bumptech/glide/a/b$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private Rc:Z

.field private final entry:Lcom/bumptech/glide/a/b$c;

.field final synthetic this$0:Lcom/bumptech/glide/a/b;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/a/b;Lcom/bumptech/glide/a/b$c;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-static {p2}, Lcom/bumptech/glide/a/b$c;->d(Lcom/bumptech/glide/a/b$c;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/a/b;->b(Lcom/bumptech/glide/a/b;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/a/b$b;->written:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/a/b;Lcom/bumptech/glide/a/b$c;Lcom/bumptech/glide/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/a/b$b;-><init>(Lcom/bumptech/glide/a/b;Lcom/bumptech/glide/a/b$c;)V

    return-void
.end method

.method private Q(I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-static {v1}, Lcom/bumptech/glide/a/b$c;->e(Lcom/bumptech/glide/a/b$c;)Lcom/bumptech/glide/a/b$b;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-static {v1}, Lcom/bumptech/glide/a/b$c;->d(Lcom/bumptech/glide/a/b$c;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a/b$c;->u(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    monitor-exit v0

    return-object v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/bumptech/glide/a/b$b;)Lcom/bumptech/glide/a/b$c;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    return-object p0
.end method

.method static synthetic b(Lcom/bumptech/glide/a/b$b;)[Z
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/a/b$b;->written:[Z

    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/b;->a(Lcom/bumptech/glide/a/b;Lcom/bumptech/glide/a/b$b;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/a/b$b;->Rc:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/a/b$b;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public commit()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/a/b;->a(Lcom/bumptech/glide/a/b;Lcom/bumptech/glide/a/b$b;Z)V

    iput-boolean v1, p0, Lcom/bumptech/glide/a/b$b;->Rc:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/a/b$b;->Q(I)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/bumptech/glide/a/b;->e(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public set(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/a/b$b;->t(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/OutputStreamWriter;

    sget-object p1, Lcom/bumptech/glide/a/e;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/bumptech/glide/a/e;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/a/e;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public t(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-static {v1}, Lcom/bumptech/glide/a/b$c;->e(Lcom/bumptech/glide/a/b$c;)Lcom/bumptech/glide/a/b$b;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-static {v1}, Lcom/bumptech/glide/a/b$c;->d(Lcom/bumptech/glide/a/b$c;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->entry:Lcom/bumptech/glide/a/b$c;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/a/b$c;->v(I)Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    invoke-static {v1}, Lcom/bumptech/glide/a/b;->d(Lcom/bumptech/glide/a/b;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/bumptech/glide/a/b$b;->this$0:Lcom/bumptech/glide/a/b;

    invoke-static {p0}, Lcom/bumptech/glide/a/b;->d(Lcom/bumptech/glide/a/b;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
