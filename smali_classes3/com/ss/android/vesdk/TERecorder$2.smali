.class Lcom/ss/android/vesdk/TERecorder$2;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Lcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallbackV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->renderPicture([BIIILcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$2;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$2;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImage([III)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed. NativeInvoker renderPicture() return invalid data. data == null ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", data.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$2;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p2}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$2;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$2;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    invoke-direct {p2, p0, v0}, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;-><init>(Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$2;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;->onImage(Landroid/graphics/Bitmap;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onResult(II)V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$2;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$2;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$100(Lcom/ss/android/vesdk/TERecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$2;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnResultListenerInvoker;-><init>(Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$2;->val$listener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;->onResult(II)V

    :cond_1
    :goto_0
    return-void
.end method
