.class Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "WideSelfie"

    const-string v0, "onDrawFrame first frame"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
