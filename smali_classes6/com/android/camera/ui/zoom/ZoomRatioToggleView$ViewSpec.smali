.class public Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SLIDER_TYPE_ALL:I = 0x2

.field public static final SLIDER_TYPE_NONE:I = 0x0

.field public static final SLIDER_TYPE_PART:I = 0x1


# instance fields
.field public final immersive:Z

.field public final suppress:Z

.field public final useSliderType:I

.field public final visibility:I


# direct methods
.method public constructor <init>(IZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->visibility:I

    iput-boolean p2, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->suppress:Z

    iput-boolean p3, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->immersive:Z

    iput p4, p0, Lcom/android/camera/ui/zoom/ZoomRatioToggleView$ViewSpec;->useSliderType:I

    return-void
.end method
