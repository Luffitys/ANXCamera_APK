.class public final synthetic Lcom/android/camera/fragment/fullscreen/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$OnFrameUpdatedCallback;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

.field public final synthetic OooO0O0:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/OooO0OO;->OooO00o:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    iput-object p2, p0, Lcom/android/camera/fragment/fullscreen/OooO0OO;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    return-void
.end method


# virtual methods
.method public final onUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/OooO0OO;->OooO00o:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/OooO0OO;->OooO0O0:Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->OooOO0O(Lcom/android/camera/protocol/ModeProtocol$LiveVideoEditor;)V

    return-void
.end method
