.class public Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private final mRenderThread:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;-><init>(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2$RenderHandler;->mRenderThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x30

    if-eq v0, v1, :cond_6

    const/16 v1, 0x40

    if-eq v0, v1, :cond_5

    const/16 v1, 0x50

    if-eq v0, v1, :cond_4

    const/16 v1, 0x60

    if-eq v0, v1, :cond_3

    const/16 v1, 0x70

    if-eq v0, v1, :cond_2

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$1100(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$1000(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$800(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V

    goto :goto_0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$700(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Lcom/arcsoft/avatar2/AvatarConfig$ASAvatarConfigInfo;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$900(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$600(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;)V

    goto :goto_0

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$500(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Ljava/lang/String;)Z

    goto :goto_0

    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;->access$400(Lcom/android/camera/features/mimoji2/fragment/edit/MimojiThumbnailRenderThread2;Z)V

    :goto_0
    return-void
.end method
