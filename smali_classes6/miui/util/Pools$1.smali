.class Lmiui/util/Pools$1;
.super Lmiui/util/Pools$Manager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/Pools$Manager<",
        "Ljava/lang/StringBuilder;",
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
.method public a(Ljava/lang/StringBuilder;)V
    .registers 2

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic createInstance()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lmiui/util/Pools$1;->createInstance()Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public createInstance()Ljava/lang/StringBuilder;
    .registers 1

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    return-object p0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lmiui/util/Pools$1;->a(Ljava/lang/StringBuilder;)V

    return-void
.end method
