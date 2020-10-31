.class Lmiui/util/IOUtils$3;
.super Lmiui/util/Pools$Manager;
.source "IOUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager<",
        "Ljava/io/StringWriter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance()Ljava/io/StringWriter;
    .registers 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/util/IOUtils$3;->createInstance()Ljava/io/StringWriter;

    move-result-object v0

    return-object v0
.end method

.method public onRelease(Ljava/io/StringWriter;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/io/StringWriter;

    invoke-virtual {p0, p1}, Lmiui/util/IOUtils$3;->onRelease(Ljava/io/StringWriter;)V

    return-void
.end method
