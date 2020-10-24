.class public Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DocumentProcess_mtk"

    goto :goto_0

    :cond_0
    const-string v0, "DocumentProcess_qcom"

    :goto_0
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeGlobalInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAlignDocumentBitmap(J[BLandroid/graphics/Bitmap;II[F[FI)V
.end method

.method public static native nativeCropAndEnhanceBitmap(JLandroid/graphics/Bitmap;[FIIZ)Landroid/graphics/Bitmap;
.end method

.method public static native nativeCropAndEnhanceYUV(J[BII[FIIZI)Landroid/graphics/Bitmap;
.end method

.method public static native nativeCropImage(JLjava/lang/String;Ljava/lang/String;[F)I
.end method

.method public static native nativeCropImageBitmap(JLandroid/graphics/Bitmap;[FI)Landroid/graphics/Bitmap;
.end method

.method public static native nativeEnhance(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native nativeEnhanceBitmap(JLandroid/graphics/Bitmap;IZ)I
.end method

.method public static native nativeGetVersion()Ljava/lang/String;
.end method

.method public static native nativeGlobalInit()V
.end method

.method public static native nativeInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static native nativeInitAndRun(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeNormalizationPoints(J[F)I
.end method

.method public static native nativeRelease(J)V
.end method

.method public static native nativeRotateDocumentYUVScanPoints([FIII[F)V
.end method

.method public static native nativeScanDocument(JLjava/lang/String;I[F)V
.end method

.method public static native nativeScanDocumentBitmap(JLandroid/graphics/Bitmap;I[FI)I
.end method

.method public static native nativeScanDocumentYUV(J[BIII[FI)I
.end method
