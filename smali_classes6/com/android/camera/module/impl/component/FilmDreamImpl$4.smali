.class Lcom/android/camera/module/impl/component/FilmDreamImpl$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$500(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;->resumePlay()V

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$4;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$600(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V

    return-void
.end method
