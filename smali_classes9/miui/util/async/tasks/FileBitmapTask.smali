.class public Lmiui/util/async/tasks/FileBitmapTask;
.super Lmiui/util/async/Task;
.source ""

# interfaces
.implements Lmiui/util/async/Cacheable;


# static fields
.field static final DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private mFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/util/async/tasks/FileBitmapTask;-><init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    iput-object p1, p0, Lmiui/util/async/tasks/FileBitmapTask;->mFilePath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/util/async/tasks/FileBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    :try_start_0
    iget-object v0, p0, Lmiui/util/async/tasks/FileBitmapTask;->mFilePath:Ljava/lang/String;

    iget-object p0, p0, Lmiui/util/async/tasks/FileBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/FileBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/FileBitmapTask;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/FileBitmapTask;->mFilePath:Ljava/lang/String;

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
