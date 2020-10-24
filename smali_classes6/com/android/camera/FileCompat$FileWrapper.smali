.class Lcom/android/camera/FileCompat$FileWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field documentFile:Landroidx/documentfile/provider/DocumentFile;

.field legacyFile:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-object p0, p0, Lcom/android/camera/FileCompat$FileWrapper;->legacyFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
