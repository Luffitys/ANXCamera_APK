.class public final Landroid/provider/MetadataReader;
.super Ljava/lang/Object;
.source "MetadataReader.java"


# static fields
.field private static final DEFAULT_EXIF_TAGS:[Ljava/lang/String;

.field private static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final JPG_MIME_TYPE:Ljava/lang/String; = "image/jpg"

.field private static final TYPE_DOUBLE:I = 0x1

.field private static final TYPE_INT:I = 0x0

.field private static final TYPE_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_STRING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 17

    const-string v0, "FNumber"

    const-string v1, "Copyright"

    const-string v2, "DateTime"

    const-string v3, "ExposureTime"

    const-string v4, "FocalLength"

    const-string v5, "FNumber"

    const-string v6, "GPSLatitude"

    const-string v7, "GPSLatitudeRef"

    const-string v8, "GPSLongitude"

    const-string v9, "GPSLongitudeRef"

    const-string v10, "ImageLength"

    const-string v11, "ImageWidth"

    const-string v12, "ISOSpeedRatings"

    const-string v13, "Make"

    const-string v14, "Model"

    const-string v15, "Orientation"

    const-string v16, "ShutterSpeedValue"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MetadataReader;->DEFAULT_EXIF_TAGS:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Artist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "BitsPerSample"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Compression"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Copyright"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "DateTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "ImageDescription"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "ImageLength"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "ImageWidth"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "JPEGInterchangeFormat"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "JPEGInterchangeFormatLength"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Make"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Model"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "Orientation"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "PhotometricInterpretation"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "PlanarConfiguration"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PrimaryChromaticities"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ReferenceBlackWhite"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ResolutionUnit"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "RowsPerStrip"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SamplesPerPixel"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Software"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "StripByteCounts"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "StripOffsets"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "TransferFunction"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "WhitePoint"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "XResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YCbCrCoefficients"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YCbCrPositioning"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YCbCrSubSampling"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "YResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ApertureValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "BrightnessValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "CFAPattern"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ColorSpace"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ComponentsConfiguration"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "CompressedBitsPerPixel"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Contrast"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "CustomRendered"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DateTimeDigitized"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DateTimeOriginal"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DeviceSettingDescription"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "DigitalZoomRatio"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExifVersion"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureBiasValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureIndex"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureProgram"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ExposureTime"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FNumber"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FileSource"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Flash"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FlashEnergy"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FlashpixVersion"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalLength"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalLengthIn35mmFilm"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalPlaneResolutionUnit"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalPlaneXResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "FocalPlaneYResolution"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GainControl"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ISOSpeedRatings"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ImageUniqueID"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "LightSource"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "MakerNote"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "MaxApertureValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "MeteringMode"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "NewSubfileType"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "OECF"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "PixelXDimension"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "PixelYDimension"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "RelatedSoundFile"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Saturation"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SceneCaptureType"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SceneType"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SensingMethod"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "Sharpness"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "ShutterSpeedValue"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SpatialFrequencyResponse"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SpectralSensitivity"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubfileType"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubSecTime"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubSecTimeDigitized"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubSecTimeOriginal"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectArea"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectDistance"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectDistanceRange"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "SubjectLocation"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "UserComment"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "WhiteBalance"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSAltitude"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSAltitudeRef"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSAreaInformation"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDOP"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDateStamp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestBearing"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestBearingRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestDistance"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestDistanceRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLatitude"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLatitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLongitude"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDestLongitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSDifferential"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSImgDirection"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSImgDirectionRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLatitude"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLatitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLongitude"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSLongitudeRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSMapDatum"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSMeasureMode"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSProcessingMethod"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSSatellites"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSSpeed"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSSpeedRef"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSStatus"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSTimeStamp"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v4, "GPSTrack"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "GPSTrackRef"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "GPSVersionID"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v3, "InteroperabilityIndex"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "ThumbnailImageLength"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "ThumbnailImageWidth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "DNGVersion"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "DefaultCropSize"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "PreviewImageStart"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "PreviewImageLength"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "AspectFrame"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorBottomBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorLeftBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorRightBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "SensorTopBorder"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    const-string v1, "ISO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExifData(Ljava/io/InputStream;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Landroid/provider/MetadataReader;->DEFAULT_EXIF_TAGS:[Ljava/lang/String;

    :cond_4
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_75

    aget-object v5, p1, v4

    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    const/high16 v6, -0x80000000

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v6, :cond_32

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_32
    goto :goto_72

    :cond_33
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v8

    cmpl-double v6, v8, v6

    if-eqz v6, :cond_71

    invoke-virtual {v1, v5, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_71

    :cond_54
    sget-object v6, Landroid/provider/MetadataReader;->TYPE_MAPPING:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_72

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_71
    :goto_71
    nop

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_75
    return-object v1
.end method

.method public static getMetadata(Landroid/os/Bundle;Ljava/io/InputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Landroid/provider/MetadataReader;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p1, p3}, Landroid/provider/MetadataReader;->getExifData(Ljava/io/InputStream;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_1d

    const-string v2, "android:documentExif"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "android:documentMetadataTypes"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "image/jpg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "image/jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
