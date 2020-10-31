.class public Lmiui/util/async/tasks/DatabaseBitmapTask;
.super Lmiui/util/async/tasks/ContentResolverQueryTask;
.source "DatabaseBitmapTask.java"

# interfaces
.implements Lmiui/util/async/Cacheable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/tasks/ContentResolverQueryTask<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lmiui/util/async/Cacheable;"
    }
.end annotation


# instance fields
.field private mDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

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
    .registers 14

    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :goto_a
    move-object v4, v0

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/util/async/tasks/DatabaseBitmapTask;->query()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_42

    :cond_e
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_3b

    if-nez v3, :cond_1c

    nop

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-object v1

    :cond_1c
    :try_start_1c
    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_3b

    :try_start_21
    array-length v1, v3

    iget-object v4, p0, Lmiui/util/async/tasks/DatabaseBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v2, v1, v4}, Lmiui/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_33

    :try_start_28
    sget-object v2, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_3b

    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_32
    return-object v1

    :catchall_33
    move-exception v1

    :try_start_34
    sget-object v2, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    nop

    throw v1
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v1

    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v1

    :cond_42
    :goto_42
    nop

    if-eqz v0, :cond_48

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_48
    return-object v1
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/util/async/tasks/DatabaseBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lmiui/util/async/tasks/DatabaseBitmapTask;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
