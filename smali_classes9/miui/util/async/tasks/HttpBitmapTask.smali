.class public Lmiui/util/async/tasks/HttpBitmapTask;
.super Lmiui/util/async/tasks/HttpTask;
.source ""

# interfaces
.implements Lmiui/util/async/Cacheable;


# instance fields
.field private mDecodeOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/HttpBitmapTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/HttpBitmapTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/util/async/tasks/HttpBitmapTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    iput-object p5, p0, Lmiui/util/async/tasks/HttpBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method


# virtual methods
.method public doLoad()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpTask;->request()Lmiui/net/http/HttpResponse;

    move-result-object v0

    sget-object v1, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    :try_start_0
    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lmiui/util/async/tasks/HttpBitmapTask;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->release()V

    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Lmiui/net/http/HttpResponse;->release()V

    sget-object v0, Lmiui/util/async/tasks/FileBitmapTask;->DECODE_LIMITATION:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw p0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpBitmapTask;->doLoad()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpTask;->getDescription()Ljava/lang/String;

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
