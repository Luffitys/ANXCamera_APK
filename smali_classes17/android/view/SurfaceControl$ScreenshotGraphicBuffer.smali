.class public Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotGraphicBuffer"
.end annotation


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mContainsSecureLayers:Z

.field private final mGraphicBuffer:Landroid/graphics/GraphicBuffer;


# direct methods
.method public constructor <init>(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    iput-object p2, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-boolean p3, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->mContainsSecureLayers:Z

    return-void
.end method

.method private static createFromNative(IIIIJIZ)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 11

    invoke-static/range {p0 .. p5}, Landroid/graphics/GraphicBuffer;->createFromExisting(IIIIJ)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v1, v1, p6

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    invoke-direct {v2, v0, v1, p7}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;-><init>(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;Z)V

    return-object v2
.end method


# virtual methods
.method public containsSecureLayers()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getGraphicBuffer()Landroid/graphics/GraphicBuffer;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->mGraphicBuffer:Landroid/graphics/GraphicBuffer;

    return-object v0
.end method
