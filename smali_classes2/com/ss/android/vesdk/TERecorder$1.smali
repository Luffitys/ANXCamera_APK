.class Lcom/ss/android/vesdk/TERecorder$1;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Lcom/ss/android/medialib/FaceBeautyInvoker$OnPictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder;->shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TERecorder;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$format:Landroid/graphics/Bitmap$CompressFormat;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$1;->this$0:Lcom/ss/android/vesdk/TERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorder$1;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult([III)V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorder$1;->val$filePath:Ljava/lang/String;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$1;->val$format:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, p2, p0}, Lcom/ss/android/medialib/common/ImageUtils;->saveBitmapWithPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
