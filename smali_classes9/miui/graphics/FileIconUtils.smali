.class public Lmiui/graphics/FileIconUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileIconHelper"

.field private static final TYPE_APK:Ljava/lang/String; = "apk"

.field private static sFileExtToIcons:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    const-string v0, "mp3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_mp3:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wma"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_wma:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wav"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_wav:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "mid"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_mid:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v2, "mp4"

    const-string v3, "wmv"

    const-string v4, "mpeg"

    const-string v5, "m4v"

    const-string v6, "3gp"

    const-string v7, "3g2"

    const-string v8, "3gpp2"

    const-string v9, "asf"

    const-string v10, "flv"

    const-string v11, "mkv"

    const-string v12, "vob"

    const-string v13, "ts"

    const-string v14, "f4v"

    const-string v15, "rm"

    const-string v16, "mov"

    const-string v17, "rmvb"

    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_video:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v2, "jpg"

    const-string v3, "jpeg"

    const-string v4, "gif"

    const-string v5, "png"

    const-string v6, "bmp"

    const-string v7, "wbmp"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_picture:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "txt"

    const-string v1, "log"

    const-string v2, "ini"

    const-string v3, "lrc"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_txt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "doc"

    const-string v1, "docx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_doc:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ppt"

    const-string v1, "pptx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_ppt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "xls"

    const-string v1, "xlsx"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_xls:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_wps:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "pps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_pps:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "et"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_et:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "wpt"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_wpt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ett"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_ett:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "dps"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_dps:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "dpt"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_dpt:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "pdf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_pdf:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "zip"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_zip:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "mtz"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_theme:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "rar"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_rar:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "apk"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_apk:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "amr"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_amr:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "vcf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_vcf:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "flac"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_flac:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "aac"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_aac:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ape"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_ape:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "m4a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_m4a:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "ogg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_ogg:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_audio:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "html"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_html:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "xml"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_xml:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    const-string v0, "3gpp"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->file_icon_3gpp:I

    invoke-static {v0, v1}, Lmiui/graphics/FileIconUtils;->addItem([Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/InstantiationException;

    const-string v0, "Cannot instantiate utility class"

    invoke-direct {p0, v0}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addItem([Ljava/lang/String;I)V
    .locals 5

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    sget-object v3, Lmiui/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    :try_start_0
    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileIconHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiui/R$drawable;->file_icon_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getFileIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p1}, Lmiui/graphics/FileIconUtils;->getExtFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lmiui/graphics/FileIconUtils;->getApkIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Lmiui/graphics/FileIconUtils;->getFileIconId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getFileIconId(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lmiui/graphics/FileIconUtils;->sFileExtToIcons:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    sget p0, Lmiui/R$drawable;->file_icon_default:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method
