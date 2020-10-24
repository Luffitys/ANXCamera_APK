.class public Lnet/majorkernelpanic/streaming/video/VideoQuality;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

.field public static final TAG:Ljava/lang/String; = "VideoQuality"


# instance fields
.field public bitrate:I

.field public framerate:I

.field public resX:I

.field public resY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/16 v1, 0xb0

    const/16 v2, 0x90

    const/16 v3, 0x14

    const v4, 0x7a120

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/majorkernelpanic/streaming/video/VideoQuality;-><init>(IIII)V

    sput-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iput v0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iput p3, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iput p4, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 4

    new-instance v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iget v3, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    invoke-direct {v0, v1, v2, v3, p0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;-><init>(IIII)V

    return-object v0
.end method

.method public static determineClosestSupportedResolution(Landroid/hardware/Camera$Parameters;Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 6

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7fffffff

    const-string v2, "Supported resolutions: "

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "x"

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ", "

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_0

    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    move v1, v4

    goto :goto_0

    :cond_2
    const-string p0, "VideoQuality"

    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v2, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    if-ne v1, v2, :cond_3

    iget v1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iget v2, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    if-eq v1, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolution modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0
.end method

.method public static determineMaximumSupportedFramerate(Landroid/hardware/Camera$Parameters;)[I
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "Supported frame rates: "

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v4, v2, v1

    div-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, v2, v4

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "fps"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ", "

    goto :goto_1

    :cond_0
    const-string v5, ""

    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v4

    aget v6, v0, v4

    if-gt v5, v6, :cond_1

    aget v5, v2, v1

    aget v1, v0, v1

    if-le v5, v1, :cond_2

    aget v1, v2, v4

    aget v4, v0, v4

    if-ne v1, v4, :cond_2

    :cond_1
    move-object v0, v2

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    const-string p0, "VideoQuality"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static parseQuality(Ljava/lang/String;)Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 2

    sget-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    if-ne v1, v2, :cond_1

    iget v1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    iget v2, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    if-ne v1, v2, :cond_1

    iget p1, p1, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " px, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->framerate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitrate:I

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " kbps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
