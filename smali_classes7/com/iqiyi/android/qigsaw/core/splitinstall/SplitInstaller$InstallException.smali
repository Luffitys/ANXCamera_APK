.class final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private final errorCode:I


# direct methods
.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Split Install Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;->errorCode:I

    return-void
.end method


# virtual methods
.method getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallException;->errorCode:I

    return p0
.end method
