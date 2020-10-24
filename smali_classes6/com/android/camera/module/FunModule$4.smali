.class Lcom/android/camera/module/FunModule$4;
.super Lcom/android/camera/module/interceptor/CaptureInterceptor;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/FunModule$4;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/CaptureInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public intercept()V
    .locals 1

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0x2a3

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$LiveFilmChooser;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/camera/protocol/ModeProtocol$LiveFilmChooser;->startShot()V

    :cond_0
    return-void
.end method
