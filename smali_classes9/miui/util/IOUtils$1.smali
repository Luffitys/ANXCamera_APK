.class Lmiui/util/IOUtils$1;
.super Lmiui/util/Pools$Manager;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/io/ByteArrayOutputStream;
    .locals 0

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmiui/util/IOUtils$1;->createInstance()Ljava/io/ByteArrayOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public onRelease(Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Lmiui/util/IOUtils$1;->onRelease(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
