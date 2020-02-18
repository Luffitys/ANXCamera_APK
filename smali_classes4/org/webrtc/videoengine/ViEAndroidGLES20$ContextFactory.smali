.class Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;
.super Ljava/lang/Object;
.source "ViEAndroidGLES20.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/videoengine/ViEAndroidGLES20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextFactory"
.end annotation


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I = 0x3098


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/videoengine/ViEAndroidGLES20$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    invoke-static {}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "creating OpenGL ES 2.0 context"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Before eglCreateContext"

    invoke-static {p0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$200(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    const/4 p0, 0x3

    new-array p0, p0, [I

    sget v0, Lorg/webrtc/videoengine/ViEAndroidGLES20$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x2

    const/4 v1, 0x1

    aput v0, p0, v1

    const/16 v1, 0x3038

    aput v1, p0, v0

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v0, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p0

    const-string p2, "After eglCreateContext"

    invoke-static {p2, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->access$200(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-object p0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    return-void
.end method
