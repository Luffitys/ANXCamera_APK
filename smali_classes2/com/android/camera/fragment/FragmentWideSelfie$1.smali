.class Lcom/android/camera/fragment/FragmentWideSelfie$1;
.super Ljava/lang/Object;
.source "FragmentWideSelfie.java"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentWideSelfie;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/FragmentWideSelfie;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$1;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentWideSelfie$1;->this$0:Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/camera/ActivityBase;

    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    return-object p0
.end method
