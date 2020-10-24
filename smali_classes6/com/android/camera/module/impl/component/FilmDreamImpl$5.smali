.class Lcom/android/camera/module/impl/component/FilmDreamImpl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$702(Lcom/android/camera/module/impl/component/FilmDreamImpl;Z)Z

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$5;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->stopRecording()V

    return-void
.end method
