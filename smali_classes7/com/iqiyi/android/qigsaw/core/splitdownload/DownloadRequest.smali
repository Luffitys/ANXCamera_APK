.class public final Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final fileDir:Ljava/lang/String;

.field private final fileMD5:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final moduleName:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$100(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$200(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$300(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$400(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    invoke-static {p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;->access$500(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;-><init>(Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;
    .locals 1

    new-instance v0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    return-object p0
.end method

.method public getFileMD5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileMD5:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileDir:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitdownload/DownloadRequest;->moduleName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
