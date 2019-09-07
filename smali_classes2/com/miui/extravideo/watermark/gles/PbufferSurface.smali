.class public Lcom/miui/extravideo/watermark/gles/PbufferSurface;
.super Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;
.source "PbufferSurface.java"


# direct methods
.method protected constructor <init>(Lcom/miui/extravideo/watermark/gles/EglCore;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;-><init>(Lcom/miui/extravideo/watermark/gles/EglCore;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/extravideo/watermark/gles/EglCore;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;-><init>(Lcom/miui/extravideo/watermark/gles/EglCore;)V

    invoke-virtual {p0, p2, p3}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;->createPbufferSurface(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/extravideo/watermark/gles/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method
