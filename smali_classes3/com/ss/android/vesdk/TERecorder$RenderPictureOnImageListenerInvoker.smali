.class Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderPictureOnImageListenerInvoker"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;


# direct methods
.method public constructor <init>(Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mListener:Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$RenderPictureOnImageListenerInvoker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, p0}, Lcom/ss/android/vesdk/TERecorder$OnPictureRenderListener;->onImage(Landroid/graphics/Bitmap;)V

    return-void
.end method
