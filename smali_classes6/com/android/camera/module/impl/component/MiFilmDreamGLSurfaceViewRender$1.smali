.class Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;


# direct methods
.method constructor <init>(Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender$1;->this$0:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera surceface texture available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiFilmDreamGLSurfaceViewRender"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender$1;->this$0:Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;

    invoke-static {p0}, Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;->access$000(Lcom/android/camera/module/impl/component/MiFilmDreamGLSurfaceViewRender;)Landroid/opengl/GLSurfaceView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
