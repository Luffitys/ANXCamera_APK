.class public Lmiui/util/async/tasks/ResourceBitmapTask;
.super Lmiui/util/async/Task;
.source ""

# interfaces
.implements Lmiui/util/async/Cacheable;


# instance fields
.field private mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field private mDescription:Ljava/lang/String;

.field private mResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/util/async/tasks/ResourceBitmapTask;-><init>(ILandroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(ILandroid/graphics/BitmapFactory$Options;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    iput p1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mResId:I

    iput-object p2, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    :try_start_0
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mResId:I

    iget-object p0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

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

    invoke-virtual {p0}, Lmiui/util/async/tasks/ResourceBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/ResourceBitmapTask;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDescription:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lmiui/util/async/tasks/ResourceBitmapTask;->mDescription:Ljava/lang/String;

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
