.class public Lmiui/util/async/tasks/DatabaseBitmapTask;
.super Lmiui/util/async/tasks/ContentResolverQueryTask;
.source ""

# interfaces
.implements Lmiui/util/async/Cacheable;


# instance fields
.field private mDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/DatabaseBitmapTask;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .locals 8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    move-object v4, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    move-object v4, v0

    :goto_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lmiui/util/async/tasks/ContentResolverQueryTask;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lmiui/util/async/tasks/DatabaseBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->query()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :cond_2
    :try_start_1
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    array-length v1, v3

    iget-object p0, p0, Lmiui/util/async/tasks/DatabaseBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v2, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/DatabaseBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 0

    instance-of p0, p1, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
