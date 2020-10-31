.class Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

.field final synthetic this$0:Lcom/miui/internal/yellowpage/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    return-void
.end method

.method private notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;
    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v3, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v3, :cond_2c

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    monitor-exit v0

    return-void

    :cond_2c
    if-nez v1, :cond_35

    new-instance v2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    move-object v1, v2

    :cond_35
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v2}, Lcom/miui/internal/yellowpage/ImageLoader;->access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-virtual {v2, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_66

    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    const/4 v2, 0x1

    # invokes: Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    invoke-static {v0, v1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->access$300(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    # invokes: Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    invoke-static {v1, v2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    goto :goto_65

    :cond_5e
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImage:Lmiui/yellowpage/YellowPageImgLoader$Image;

    # invokes: Lcom/miui/internal/yellowpage/ImageLoader;->removeFailedImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    invoke-static {v1, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    :goto_65
    return-void

    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1
.end method
