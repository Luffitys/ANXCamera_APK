.class Lcom/android/camera/network/resource/LiveResourceDownloadManager$Instance;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static mInstance:Lcom/android/camera/network/resource/LiveResourceDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/network/resource/LiveResourceDownloadManager;-><init>(Lcom/android/camera/network/resource/LiveResourceDownloadManager$1;)V

    sput-object v0, Lcom/android/camera/network/resource/LiveResourceDownloadManager$Instance;->mInstance:Lcom/android/camera/network/resource/LiveResourceDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
