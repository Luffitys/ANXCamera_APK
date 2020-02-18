.class Lcom/ss/android/vesdk/TERecorder$4$1;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder$4;->onOpenGLCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/TERecorder$4;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder$4;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ss/android/vesdk/TERecorder;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnFrameAvailable encounter mNativeInvoker == null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/TERecorder$4;->access$600(Lcom/ss/android/vesdk/TERecorder$4;Landroid/graphics/SurfaceTexture;)[F

    move-result-object p1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object v0, v0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {v0}, Lcom/ss/android/vesdk/TERecorder;->access$200(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/medialib/FaceBeautyInvoker;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4$1;->this$1:Lcom/ss/android/vesdk/TERecorder$4;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$4;->this$0:Lcom/ss/android/vesdk/TERecorder;

    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/TERecorder$Texture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorder$Texture;->getTextureID()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/medialib/FaceBeautyInvoker;->onDrawFrame(I[F)I

    return-void
.end method
