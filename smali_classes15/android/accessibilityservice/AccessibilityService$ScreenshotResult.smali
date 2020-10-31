.class public final Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenshotResult"
.end annotation


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final mTimestamp:J


# direct methods
.method private constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hardwareBuffer cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "colorSpace cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-wide p3, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;JLandroid/accessibilityservice/AccessibilityService$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V

    return-void
.end method


# virtual methods
.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-wide v0
.end method
