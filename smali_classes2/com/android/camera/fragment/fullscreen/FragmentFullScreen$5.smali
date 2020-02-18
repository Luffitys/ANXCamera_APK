.class Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;
.super Ljava/lang/Object;
.source "FragmentFullScreen.java"

# interfaces
.implements Lcom/ss/android/vesdk/TERecorder$OnConcatFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->initConcatListener()V
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

    iput-object p1, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConcatFinished(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConcatFinished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FullScreen"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;

    iget-object v0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-static {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$600(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen$5;->this$0:Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveConfigChanges;->getConcatResult()Landroid/util/Pair;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;->access$700(Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;Landroid/util/Pair;)V

    :cond_0
    return-void
.end method
