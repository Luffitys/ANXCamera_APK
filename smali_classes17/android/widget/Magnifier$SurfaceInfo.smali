.class Landroid/widget/Magnifier$SurfaceInfo;
.super Ljava/lang/Object;
.source "Magnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Magnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SurfaceInfo"
.end annotation


# static fields
.field public static final NULL:Landroid/widget/Magnifier$SurfaceInfo;


# instance fields
.field private mHeight:I

.field private mInsets:Landroid/graphics/Rect;

.field private mIsMainWindowSurface:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v7, Landroid/widget/Magnifier$SurfaceInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/widget/Magnifier$SurfaceInfo;-><init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V

    sput-object v7, Landroid/widget/Magnifier$SurfaceInfo;->NULL:Landroid/widget/Magnifier$SurfaceInfo;

    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceControl;Landroid/view/Surface;IILandroid/graphics/Rect;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object p2, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;

    iput p3, p0, Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I

    iput p4, p0, Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I

    iput-object p5, p0, Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;

    iput-boolean p6, p0, Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/Magnifier$SurfaceInfo;)I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mWidth:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/SurfaceControl;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/Magnifier$SurfaceInfo;)I
    .registers 2

    iget v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mHeight:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/Magnifier$SurfaceInfo;)Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/Magnifier$SurfaceInfo;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Magnifier$SurfaceInfo;->mIsMainWindowSurface:Z

    return v0
.end method
