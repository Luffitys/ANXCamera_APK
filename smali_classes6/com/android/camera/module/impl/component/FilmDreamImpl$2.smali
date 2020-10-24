.class Lcom/android/camera/module/impl/component/FilmDreamImpl$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/FilmDreamImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$200(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$300(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release render"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/FilmDreamImpl$2;->this$0:Lcom/android/camera/module/impl/component/FilmDreamImpl;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->access$300(Lcom/android/camera/module/impl/component/FilmDreamImpl;)Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->release()V

    :cond_1
    return-void
.end method
