.class public Lcom/xiaomi/mediaprocess/OpenGlRender;
.super Ljava/lang/Object;
.source "OpenGlRender.java"


# static fields
.field private static TAG:Ljava/lang/String; = "OpenGlRender"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/xiaomi/mediaprocess/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v0, "construction"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static native FrameAvailableJni()V
.end method

.method private static native RenderFrameJni()V
.end method

.method private static native SetCurrentGLContextJni(I)V
.end method

.method private static native SetOpengGlRenderParamsJni(IIIII[B[B)V
.end method

.method private native SetWindowSizeJni(IIII)V
.end method


# virtual methods
.method public RenderFrame()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mediaprocess/OpenGlRender;->RenderFrameJni()V

    return-void
.end method

.method public SetCurrentGLContext(I)V
    .locals 2

    sget-object p0, Lcom/xiaomi/mediaprocess/OpenGlRender;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetCurrentGLContext, surface texture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetCurrentGLContextJni(I)V

    return-void
.end method

.method public SetOpengGlRenderParams(IIIII[B[B)V
    .locals 1

    sget-object p0, Lcom/xiaomi/mediaprocess/OpenGlRender;->TAG:Ljava/lang/String;

    const-string v0, "SetOpengGlRenderParams"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p7}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetOpengGlRenderParamsJni(IIIII[B[B)V

    return-void
.end method

.method public SetWindowSize(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mediaprocess/OpenGlRender;->SetWindowSizeJni(IIII)V

    return-void
.end method

.method public onFrameAvailable()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/mediaprocess/OpenGlRender;->FrameAvailableJni()V

    return-void
.end method
