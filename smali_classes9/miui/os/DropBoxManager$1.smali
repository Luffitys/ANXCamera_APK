.class Lmiui/os/DropBoxManager$1;
.super Lmiui/util/SoftReferenceSingleton;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/os/DropBoxManager$1;->createInstance()Lmiui/os/DropBoxManager;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance()Lmiui/os/DropBoxManager;
    .locals 1

    new-instance p0, Lmiui/os/DropBoxManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/os/DropBoxManager;-><init>(Lmiui/os/DropBoxManager$1;)V

    return-object p0
.end method
