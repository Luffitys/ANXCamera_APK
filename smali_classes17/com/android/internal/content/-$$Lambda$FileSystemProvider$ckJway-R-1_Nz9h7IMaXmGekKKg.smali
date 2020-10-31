.class public final synthetic Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/content/FileSystemProvider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/content/FileSystemProvider;Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;->f$0:Lcom/android/internal/content/FileSystemProvider;

    iput-object p2, p0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;->f$0:Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/content/-$$Lambda$FileSystemProvider$ckJway-R-1_Nz9h7IMaXmGekKKg;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/content/FileSystemProvider;->lambda$openDocument$1$FileSystemProvider(Ljava/lang/String;Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method
