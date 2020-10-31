.class public Landroid/media/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field private static final FIRST_AUDIO_FILE_TYPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LAST_AUDIO_FILE_TYPE:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/media/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sFileTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sFormatToMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMimeTypeToFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFileTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    const/16 v0, 0x3009

    const-string v1, "audio/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3008

    const-string v2, "audio/x-wav"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb901

    const-string v2, "audio/x-ms-wma"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb902

    const-string v2, "audio/ogg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb903

    const-string v2, "audio/aac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb906

    const-string v2, "audio/flac"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3007

    const-string v2, "audio/x-aiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb983

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300b

    const-string/jumbo v1, "video/mpeg"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb982

    const-string/jumbo v1, "video/mp4"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb984

    const-string/jumbo v1, "video/3gpp"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string/jumbo v1, "video/3gpp2"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300a

    const-string/jumbo v1, "video/avi"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xb981

    const-string/jumbo v1, "video/x-ms-wmv"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x300c

    const-string/jumbo v1, "video/x-ms-asf"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3801

    const-string v2, "image/jpeg"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3807

    const-string v2, "image/gif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380b

    const-string v2, "image/png"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3804

    const-string v2, "image/x-ms-bmp"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3812

    const-string v2, "image/heif"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3811

    const-string v2, "image/x-adobe-dng"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380d

    const-string v2, "image/tiff"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-canon-cr2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-nikon-nrw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-sony-arw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-panasonic-rw2"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-olympus-orf"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-pentax-pef"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v3, "image/x-samsung-srw"

    invoke-static {v0, v3}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3802

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v2, "image/x-nikon-nef"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x380f

    const-string v2, "image/jp2"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3810

    const-string v2, "image/jpx"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba11

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba14

    const-string v2, "audio/x-scpls"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba10

    const-string v2, "application/vnd.ms-wpl"

    invoke-static {v0, v2}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba13

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3004

    const-string/jumbo v1, "text/plain"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const/16 v0, 0x3005

    const-string/jumbo v1, "text/html"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba82

    const-string/jumbo v1, "text/xml"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba83

    const-string v1, "application/msword"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba85

    const-string v1, "application/vnd.ms-excel"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const v0, 0xba86

    const-string v1, "application/vnd.ms-powerpoint"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    const-string v1, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-static {v0, v1}, Landroid/media/MediaFile;->addFileType(ILjava/lang/String;)V

    invoke-static {}, Landroid/media/MediaFileInjector;->addMiuiFileType()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFileType(ILjava/lang/String;)V
    .registers 4

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_13

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    return-object v0
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_14

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_14
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_21

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_9

    return v0

    :cond_9
    invoke-static {p0}, Landroid/media/MediaFile;->getFormatCodeForFile(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getFormatCodeForFile(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getFormatCodeForMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFormatCodeForMimeType(Ljava/lang/String;)I
    .registers 4

    const/16 v0, 0x3000

    if-nez p0, :cond_5

    return v0

    :cond_5
    sget-object v1, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_14
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Landroid/media/MediaFile;->sMimeTypeToFormatMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_28
    const-string v2, "audio/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const v0, 0xb900

    return v0

    :cond_34
    const-string/jumbo v2, "video/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    const v0, 0xb980

    return v0

    :cond_41
    const-string v2, "image/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v0, 0x3800

    return v0

    :cond_4c
    return v0
.end method

.method public static getMimeType(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    invoke-static {p1}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/media/MediaFile;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object v2, v1

    goto :goto_12

    :cond_10
    const-string v2, "application/octet-stream"

    :goto_12
    return-object v2
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/media/MediaFile;->sFormatToMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    const-string v1, "application/octet-stream"

    :goto_12
    return-object v1
.end method

.method public static isAudioFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isAudioMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDocumentMimeType(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    return v3

    :cond_13
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_2b6

    :cond_21
    goto/16 :goto_2b0

    :sswitch_23
    const-string v5, "application/vnd.oasis.opendocument.database"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x11

    goto/16 :goto_2b0

    :sswitch_2f
    const-string v5, "application/vnd.ms-excel.addin.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x5

    goto/16 :goto_2b0

    :sswitch_3a
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x20

    goto/16 :goto_2b0

    :sswitch_46
    const-string v5, "application/vnd.ms-powerpoint.presentation.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0xb

    goto/16 :goto_2b0

    :sswitch_52
    const-string v5, "application/vnd.stardivision.writer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x2b

    goto/16 :goto_2b0

    :sswitch_5e
    const-string v5, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x17

    goto/16 :goto_2b0

    :sswitch_6a
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x1e

    goto/16 :goto_2b0

    :sswitch_76
    const-string v5, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x1a

    goto/16 :goto_2b0

    :sswitch_82
    const-string v5, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x15

    goto/16 :goto_2b0

    :sswitch_8e
    const-string v5, "application/vnd.sun.xml.impress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x31

    goto/16 :goto_2b0

    :sswitch_9a
    const-string v5, "application/vnd.ms-word.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0xf

    goto/16 :goto_2b0

    :sswitch_a6
    const-string v5, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x14

    goto/16 :goto_2b0

    :sswitch_b2
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x23

    goto/16 :goto_2b0

    :sswitch_be
    const-string v5, "application/msword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v4, v3

    goto/16 :goto_2b0

    :sswitch_c9
    const-string v5, "application/vnd.stardivision.impress-packed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x28

    goto/16 :goto_2b0

    :sswitch_d5
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x1f

    goto/16 :goto_2b0

    :sswitch_e1
    const-string v5, "application/vnd.stardivision.impress"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x27

    goto/16 :goto_2b0

    :sswitch_ed
    const-string v5, "application/vnd.stardivision.writer-global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x2c

    goto/16 :goto_2b0

    :sswitch_f9
    const-string v5, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x13

    goto/16 :goto_2b0

    :sswitch_105
    const-string v5, "application/vnd.ms-powerpoint.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0xd

    goto/16 :goto_2b0

    :sswitch_111
    const-string v5, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x18

    goto/16 :goto_2b0

    :sswitch_11d
    const-string v5, "application/vnd.ms-powerpoint.addin.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0xa

    goto/16 :goto_2b0

    :sswitch_129
    const-string v5, "application/vnd.oasis.opendocument.presentation-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x16

    goto/16 :goto_2b0

    :sswitch_135
    const-string v5, "application/vnd.ms-excel.sheet.binary.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x6

    goto/16 :goto_2b0

    :sswitch_140
    const-string v5, "application/vnd.ms-excel"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x4

    goto/16 :goto_2b0

    :sswitch_14b
    const-string v5, "application/vnd.sun.xml.impress.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x32

    goto/16 :goto_2b0

    :sswitch_157
    const-string v5, "application/vnd.sun.xml.writer.global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x35

    goto/16 :goto_2b0

    :sswitch_163
    const-string v5, "application/x-mspublisher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x37

    goto/16 :goto_2b0

    :sswitch_16f
    const-string v5, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x1c

    goto/16 :goto_2b0

    :sswitch_17b
    const-string v5, "application/vnd.sun.xml.math"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x33

    goto/16 :goto_2b0

    :sswitch_187
    const-string v5, "application/vnd.sun.xml.draw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x2f

    goto/16 :goto_2b0

    :sswitch_193
    const-string v5, "application/vnd.sun.xml.calc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x2d

    goto/16 :goto_2b0

    :sswitch_19f
    const-string v5, "application/vnd.ms-excel.template.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x8

    goto/16 :goto_2b0

    :sswitch_1ab
    const-string v5, "application/vnd.oasis.opendocument.formula"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x12

    goto/16 :goto_2b0

    :sswitch_1b7
    const-string v5, "application/vnd.sun.xml.draw.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x30

    goto/16 :goto_2b0

    :sswitch_1c3
    const-string v5, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x22

    goto/16 :goto_2b0

    :sswitch_1cf
    const-string v5, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x9

    goto/16 :goto_2b0

    :sswitch_1db
    const-string v5, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x1d

    goto/16 :goto_2b0

    :sswitch_1e7
    const-string v5, "application/vnd.ms-powerpoint.slideshow.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0xc

    goto/16 :goto_2b0

    :sswitch_1f3
    const-string v5, "application/rtf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x3

    goto/16 :goto_2b0

    :sswitch_1fe
    const-string v5, "application/pdf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x2

    goto/16 :goto_2b0

    :sswitch_209
    const-string v5, "application/vnd.ms-word.document.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0xe

    goto/16 :goto_2b0

    :sswitch_215
    const-string v5, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x1b

    goto/16 :goto_2b0

    :sswitch_221
    const-string v5, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x21

    goto/16 :goto_2b0

    :sswitch_22d
    const-string v5, "application/vnd.sun.xml.calc.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x2e

    goto/16 :goto_2b0

    :sswitch_239
    const-string v5, "application/vnd.sun.xml.writer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x34

    goto/16 :goto_2b0

    :sswitch_245
    const-string v5, "application/vnd.ms-excel.sheet.macroenabled.12"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x7

    goto :goto_2b0

    :sswitch_24f
    const-string v5, "application/vnd.oasis.opendocument.text"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x19

    goto :goto_2b0

    :sswitch_25a
    const-string v5, "application/vnd.sun.xml.writer.template"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x36

    goto :goto_2b0

    :sswitch_265
    const-string v5, "application/vnd.stardivision.chart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x25

    goto :goto_2b0

    :sswitch_270
    const-string v5, "application/vnd.oasis.opendocument.chart"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x10

    goto :goto_2b0

    :sswitch_27b
    const-string v5, "application/epub+zip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v4, v0

    goto :goto_2b0

    :sswitch_285
    const-string v5, "application/vnd.stardivision.math"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x2a

    goto :goto_2b0

    :sswitch_290
    const-string v5, "application/vnd.stardivision.mail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x29

    goto :goto_2b0

    :sswitch_29b
    const-string v5, "application/vnd.stardivision.draw"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x26

    goto :goto_2b0

    :sswitch_2a6
    const-string v5, "application/vnd.stardivision.calc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 v4, 0x24

    :goto_2b0
    packed-switch v4, :pswitch_data_398

    return v0

    :pswitch_2b4
    return v3

    nop

    :sswitch_data_2b6
    .sparse-switch
        -0x7f44465d -> :sswitch_2a6
        -0x7f43936e -> :sswitch_29b
        -0x7f3fbafb -> :sswitch_290
        -0x7f3fb9aa -> :sswitch_285
        -0x77b8a693 -> :sswitch_27b
        -0x6a428d87 -> :sswitch_270
        -0x69417db0 -> :sswitch_265
        -0x68255665 -> :sswitch_25a
        -0x667e94ce -> :sswitch_24f
        -0x62888ad2 -> :sswitch_245
        -0x610e9853 -> :sswitch_239
        -0x5ed1e487 -> :sswitch_22d
        -0x59c3e1a9 -> :sswitch_221
        -0x4e7ea34b -> :sswitch_215
        -0x4d189f3b -> :sswitch_209
        -0x4a68144d -> :sswitch_1fe
        -0x4a680adb -> :sswitch_1f3
        -0x4151d343 -> :sswitch_1e7
        -0x3ffe58cb -> :sswitch_1db
        -0x3fe2a28f -> :sswitch_1cf
        -0x3ea35d2d -> :sswitch_1c3
        -0x3d99ba96 -> :sswitch_1b7
        -0x38434ebf -> :sswitch_1ab
        -0x3464229d -> :sswitch_19f
        -0x2e7d3bf1 -> :sswitch_193
        -0x2e7c8902 -> :sswitch_187
        -0x2e78af3e -> :sswitch_17b
        -0x28553dc7 -> :sswitch_16f
        -0x1cb6d53e -> :sswitch_163
        -0x1c904afc -> :sswitch_157
        -0x17a6095d -> :sswitch_14b
        -0x15d566cf -> :sswitch_140
        -0x11ed9627 -> :sswitch_135
        -0x11654d98 -> :sswitch_129
        -0x901206b -> :sswitch_11d
        -0x6850aa0 -> :sswitch_111
        0x3e26123 -> :sswitch_105
        0x198f4610 -> :sswitch_f9
        0x22098aaf -> :sswitch_ed
        0x27e80391 -> :sswitch_e1
        0x2967ba15 -> :sswitch_d5
        0x2e45be34 -> :sswitch_c9
        0x35ebd34f -> :sswitch_be
        0x3f3a9e32 -> :sswitch_b2
        0x5218db97 -> :sswitch_a6
        0x5278be24 -> :sswitch_9a
        0x527dd1a5 -> :sswitch_8e
        0x55a6501f -> :sswitch_82
        0x57208d5d -> :sswitch_76
        0x5e059df3 -> :sswitch_6a
        0x61f85627 -> :sswitch_5e
        0x63c34841 -> :sswitch_52
        0x68571d43 -> :sswitch_46
        0x76d7a0a2 -> :sswitch_3a
        0x7cd0cb55 -> :sswitch_2f
        0x7e37ad00 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_398
    .packed-switch 0x0
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
        :pswitch_2b4
    .end packed-switch
.end method

.method public static isDrmFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-android-drm-fl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExifMimeType(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPlayListFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isPlayListMimeType(Ljava/lang/String;)Z
    .registers 9

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_5e

    :cond_11
    goto :goto_4e

    :sswitch_12
    const-string v1, "application/vnd.ms-wpl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_4f

    :sswitch_1c
    const-string v1, "audio/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    goto :goto_4f

    :sswitch_26
    const-string v1, "audio/mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v6

    goto :goto_4f

    :sswitch_30
    const-string v1, "application/vnd.apple.mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v4

    goto :goto_4f

    :sswitch_3a
    const-string v1, "application/x-mpegurl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v5

    goto :goto_4f

    :sswitch_44
    const-string v1, "audio/x-scpls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto :goto_4f

    :goto_4e
    const/4 v0, -0x1

    :goto_4f
    if-eqz v0, :cond_5c

    if-eq v0, v7, :cond_5c

    if-eq v0, v6, :cond_5c

    if-eq v0, v5, :cond_5c

    if-eq v0, v4, :cond_5c

    if-eq v0, v3, :cond_5c

    return v2

    :cond_5c
    return v7

    nop

    :sswitch_data_5e
    .sparse-switch
        -0x45784127 -> :sswitch_44
        -0x3a5bd08a -> :sswitch_3a
        -0x251f4d8b -> :sswitch_30
        -0x19cb7f6f -> :sswitch_26
        0xfbfd67c -> :sswitch_1c
        0x6f9869ad -> :sswitch_12
    .end sparse-switch
.end method

.method public static isVideoFileType(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/MediaFile;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    return-object v2

    :cond_11
    if-eqz p0, :cond_15

    move-object v2, p0

    goto :goto_17

    :cond_15
    const-string v2, "application/octet-stream"

    :goto_17
    return-object v2
.end method
