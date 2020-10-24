.class Lcom/android/camera/dualvideo/render/RenderManager$1;
.super Landroid/os/Handler;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/dualvideo/render/RenderManager;


# direct methods
.method constructor <init>(Lcom/android/camera/dualvideo/render/RenderManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RenderManager$1;->this$0:Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
