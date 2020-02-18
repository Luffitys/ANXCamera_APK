.class Lmiui/util/IOUtils$3;
.super Lmiui/util/Pools$Manager;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0}, Lmiui/util/Pools$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/StringWriter;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public createInstance()Ljava/io/StringWriter;
    .registers 1

    .line 2
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiui/util/IOUtils$3;->createInstance()Ljava/io/StringWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/io/StringWriter;

    invoke-virtual {p0, p1}, Lmiui/util/IOUtils$3;->a(Ljava/io/StringWriter;)V

    return-void
.end method
