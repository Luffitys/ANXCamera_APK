.class Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;
.super Landroid/os/Handler;
.source "FragmentFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->quitLiveRecordPreview(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$300(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$300(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$TextureListenerWrapper;->requestCapture()V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$400(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$2;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$200(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)V

    :goto_0
    return-void
.end method
